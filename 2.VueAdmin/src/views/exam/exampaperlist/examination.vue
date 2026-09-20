<template>
	<div>
		<div class="exam_top">
			<div class="examTopLeft">
				{{examDetail.name}} (共{{questionList.length}}题)
			</div>
			<div class="examTopCenter">
				剩余时间：{{times}}
			</div>
			<div class="examTopRight">
				<el-button type="danger" @click="leaveExam">退出考试</el-button>
			</div>
		</div>
		<div class="exam_top_kong"></div>
		<el-card v-if="endType" class="score_view">
			<div class="score_item">
				考试成绩：<span class="score_num">{{scoreChange()}}</span>
			</div>
			<div class="btn_view">
				<el-button v-if="!analysisType" type="primary" @click="viewAnalysis">查看解析</el-button>
				<el-button type="danger" @click="endExam">结束考试</el-button>
			</div>
		</el-card>
		<el-card class="question_list" v-if="(!submitType&&!analysisType)||(submitType&&analysisType)">
			<div class="question" v-for="(item,index) in questionList" :key="index">
				<div class="questionTitle">
					{{index + 1}}、{{item.questionname}}
					<el-tag type="success" v-if="item.type==0">单选题</el-tag>
					<el-tag type="warning" v-if="item.type==1">多选题</el-tag>
					<el-tag type="danger" v-if="item.type==2">判断题</el-tag>
					<el-tag type="info" v-if="item.type==3">填空题</el-tag>
				</div>
				<div class="optionList" v-if="item.type==0||item.type==1">
					<div class="option" v-for="(items,indexs) in item.optionList" :key="index">
						{{codeChange(indexs)}}：{{items.text}}
					</div>
				</div>
				<div class="answer" v-if="!submitType">
					<el-select v-if="item.type==2||item.type==0" v-model="item.myanswer"
						placeholder="输入答案">
						<el-option v-if="item.type==0" v-for="(items,indexs) in item.optionList"
							:label="codeChange(indexs)" :value="codeChange(indexs)"></el-option>
						<el-option v-if="item.type==2" v-for="(items,indexs) in item.optionList"
							:label="codeChange1(indexs)" :value="codeChange(indexs)"></el-option>
					</el-select>
					<el-select v-else-if="item.type==1" v-model="item.myanswers"
						placeholder="输入答案" multiple @change="(e)=>type1Change(e,index)">
						<el-option v-for="(items,indexs) in item.optionList" :label="codeChange(indexs)"
							:value="codeChange(indexs)"></el-option>
					</el-select>
					<el-input class="answer_inp" v-model="item.myanswer" placeholder="输入答案" v-else></el-input>
				</div>
				<div class="answer" v-if="submitType">
					<el-tag type="success" v-if="item.answer==item.myanswer" size="large">答案正确</el-tag>
					<el-tag type="danger" v-if="item.answer!=item.myanswer" size="large">答案错误</el-tag>
					我的答案：{{item.myanswer}}
				</div>
				<el-collapse v-if="submitType" model-value="1" class="analysis_view">
					<el-collapse-item title="查看解析" name="1">
						<div class="right_view">正确答案：{{item.answer}}</div>
						<div class="analysis">解析：{{item.analysis}}</div>
					</el-collapse-item>
				</el-collapse>
				<el-divider v-if="questionList.length - 1!=index" />
			</div>
			<div class="btn_view" v-if="!submitType">
				<el-button type="success" @click="save">立即交卷</el-button>
			</div>
		</el-card>
	</div>
</template>

<script setup>
	import {
		ref,
		nextTick,
		getCurrentInstance,
		computed
	} from 'vue';
	import {
		useRoute,
		useRouter
	} from 'vue-router'
	import {
		ElMessageBox
	} from 'element-plus'
	const route = useRoute()
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	//初始化
	const id = ref(0)
	const init = () => {
		if (route.query.id) {
			id.value = route.query.id
			getSession()
			getExamination()
			getQuestionList()
		}
	}
	//获取用户信息
	const user = ref({})
	const getSession = () => {
		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			user.value = res.data.data
		})
	}
	//获取试卷详情
	const examDetail = ref({})
	const examTime = ref(0)
	const timeInter = ref(null)
	const getExamination = () => {
		context?.$http({
			url: `exampaper/info/${id.value}`,
			method: 'get'
		}).then(res => {
			examDetail.value = res.data.data
			examTime.value = Number(res.data.data.time * 60)
			timeInter.value = setInterval(() => {
				examTime.value--
			}, 1000)
		})
	}
	const times = computed(() => {
		var time = examTime.value
		if (null != time && "" != time) {
			if (time > 60 && time < 60 * 60) {
				time =
					parseInt(time / 60.0) +
					"分钟" +
					parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
					"秒";
			} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
				time =
					parseInt(time / 3600.0) +
					"小时" +
					parseInt(
						(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
					) +
					"分钟" +
					parseInt(
						(parseFloat(
								(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
							) -
							parseInt(
								(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
							)) *
						60
					) +
					"秒";
			} else if (time >= 60 * 60 * 24) {
				time =
					parseInt(time / 3600.0 / 24) +
					"天" +
					parseInt(
						(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
						24
					) +
					"小时" +
					parseInt(
						(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
					) +
					"分钟" +
					parseInt(
						(parseFloat(
								(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
							) -
							parseInt(
								(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
							)) *
						60
					) +
					"秒";
			} else {
				if (parseInt(time) <= 0) {
					time = "0秒";
				} else {
					time = parseInt(time) + "秒";
				}
			}
		}
		return time;
	})
	//交卷状态
	const submitType = ref(false)
	const endType = ref(false)
	//是否查看解析
	const analysisType = ref(false)
	//试题
	const questionList = ref([])
	const getQuestionList = () => {
		context?.$http({
			url: 'examquestion/page',
			method: 'get',
			params: {
				page: 1,
				limit: 1000,
				sort: 'sequence',
				paperid: id.value
			}
		}).then(res => {
			for (let x in res.data.data.list) {
				if (res.data.data.list[x].options) {
					res.data.data.list[x].optionList = JSON.parse(res.data.data.list[x].options)
				} else {
					res.data.data.list[x].optionList = []
				}
			}
			questionList.value = res.data.data.list
		})
	}
	//获取选项
	const codeChange = (type) => {
		let arr = ['A', 'B', 'C', 'D']
		return arr[type]
	}
	const codeChange1 = (type) => {
		let arr = ['对', '错']
		return arr[type]
	}
	//多选题
	const type1Change = (e,index) => {
		questionList.value[index].myanswers = questionList.value[index].myanswers.sort()
		questionList.value[index].myanswer = e.sort().join(',')
	}
	//退出考试
	const leaveExam = () => {
		ElMessageBox.confirm(`是否退出考试？`, '提示', {
			confirmButtonText: '是',
			cancelButtonText: '否',
			type: 'warning',
		}).then(() => {
			history.back()
		})
	}
	//结束考试
	const endExam = () => {
		history.back()
	}
	//分数统计
	const scoreChange = () => {
		let score = 0
		for (let x in questionList.value) {
			if (questionList.value[x].myanswer == questionList.value[x].answer) {
				questionList.value[x].myscore = questionList.value[x].score
			} else {
				questionList.value[x].myscore = 0
			}
			score += questionList.value[x].myscore
		}
		return score
	}
	//提交考试记录
	const saverecord = (row) => {
		let arr = {
			userid: user.value.id,
			username: user.value.yuangonggonghao,
			paperid: examDetail.value.id,
			papername: examDetail.value.name,
			questionid: parseInt(row.id),
			questionname: row.questionname,
			options: row.options ? row.options : '[]',
			score: row.score,
			answer: row.answer,
			analysis: row.analysis,
			myanswer: row.myanswer,
			myscore: row.myanswer == row
				.answer ? row.score : 0,
		}
		context?.$http({
			url: 'examrecord/save',
			method: 'POST',
			data: arr
		}).then(res => {})
	}
	//查看解析
	const viewAnalysis = () => {
		analysisType.value = true
	}
	//交卷
	const save = () => {
		ElMessageBox.confirm(`是否完成考试？`, '提示', {
			confirmButtonText: '是',
			cancelButtonText: '否',
			type: 'warning',
		}).then(() => {
			submitType.value = true
			endType.value = true
			clearInterval(timeInter.value)
			for(let x in questionList.value){
				saverecord(questionList.value[x])
			}
		})
	}
	init()
</script>

<style lang="scss" scoped>
	.exam_top {
		padding: 0 10px;
		top: 0;
		left: 0;
		background: rgba(217, 230, 247, 1);
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		position: fixed;
		box-sizing: border-box;
		height: 60px;
		
		// 考试名称
		.examTopLeft {
			color: #2C2C2C;
			font-weight: bold;
			width: auto;
			font-size: 28px;
			text-align: center;
		}
		//时间
		.examTopCenter {
			border-radius: 0 0 20px 20px;
			top: 0;
			color: #fff;
			background: linear-gradient(133deg, #9CC8EB 0%, #61B7FE 100%);
			width: 10%;
			font-size: 14px;
			line-height: 70px;
			position: absolute;
			right: 20%;
			text-align: center;
			height: 70px;
		}
		// 退出考试盒子
		.examTopRight {
			width: 0;
			text-align: right;
			// 按钮
			:deep(.el-button--danger) {
				border: 0;
				cursor: pointer;
				padding: 0 24px;
				margin: 0 10px 0 0;
				color: #fff;
				font-size: 14px;
				right: 5%;
				border-radius: 0 0 20px 20px;
				outline: none;
				top: 0;
				background: linear-gradient(133deg, #9CC8EB 0%, #61B7FE 100%);
				width: 10%;
				position: absolute;
				height: 70px;
			}
			// 按钮悬浮
			:deep(.el-button--danger:hover) {
				background: linear-gradient(266deg, #FB843D 0%, #9EC8EA 0%, #5DB6FF 100%);
			}
		}
	}

	// 答题区域
	.question_list {
		border: none;
		box-shadow: none;
		padding: 0;
		margin: 80px auto 0;
		background: #F6F6F6;
		width: 100%;
		text-align: left;
		// 答题盒子
		.question {
			margin: 0 auto ;
			background: #fff;
			width: 84%;
			// 分割线
			:deep(.el-divider) {
				margin: 0;
				display: block;
				width: 100%;
				height: 0;
			}
			// 题目
			.questionTitle {
				border-radius: 20px;
				padding: 6px 20px;
				color: #fff;
				background: #66B8FC;
				width: 100%;
				// 单选题
				:deep(.el-tag--success) {
					background-color: #f0f9eb;
					color: #67c23a;
					border-color: #e1f3d8;
				}
				// 判断题
				:deep(.el-tag--danger) {
					background-color: #fef0f0;
					color: #f56c6c;
					border-color: #fde2e2;
				}
				// 填空题
				:deep(.el-tag--info) {
					background-color: #f4f4f5;
					color: #909399;
					border-color: #e9e9eb;
				}
				// 多选题
				:deep(.el-tag--warning) {
					background-color: #fdf6ec;
					color: #e6a23c;
					border-color: #faecd8;
				}
			}
			// 选项列表
			.optionList {
				padding: 10px 20px;
				text-indent: 2rem;

				.option {
					padding: 0 0 10px;
				}
			}
			// 答案盒子
			.answer {
				padding: 10px 30px;
				margin: 10px 0 0;
				background: #D9E6F7;
				box-sizing: border-box;
				// 输入框
				:deep(.answer_inp) {
					border: 2px solid #66B8FC;
					border-radius: 20px;
					padding: 0 10px;
					background: transparent;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				// 下拉框
				:deep(.el-select) {
					border: 2px solid #66B8FC;
					border-radius: 20px;
					padding: 0 10px;
					background: transparent;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.select-trigger {
						height: 100%;
						.el-input {
							height: 100%;
							.el-input__wrapper {
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
				// 答案正确
				:deep(.el-tag--success) {
					background-color: #f0f9eb;
					color: #67c23a;
					border-color: #e1f3d8;
				}
				// 答案错误
				:deep(.el-tag--danger) {
					background-color: #fef0f0;
					color: #f56c6c;
					border-color: #fde2e2;
				}
			}
			// 解析盒子
			:deep(.analysis_view) {
				border: 1px solid #EBEEF5;
				padding: 0 20px;
				border-width: 0;
				// 标题
				.el-collapse-item__header {
					border: none;
					// 图标
					.el-icon {
						color: #999;
					}
				}
				.el-collapse-item__wrap {
					border-bottom: none;
				}
				// 内容区
				.el-collapse-item__content {
					border: 1px solid #EBEEF5;
					border-width: 0 0 0;
					// 正确答案
					.right_view {
						color: #000;
						text-indent: 2rem;
						font-size: 14px;
					}
					// 解析
					.analysis {
						border: none;
						color: #000;
						text-indent: 2rem;
						font-size: 14px;
					}
				}
			}
		}
		// 按钮盒子
		.btn_view{
			padding: 20px 0;
			margin: 0 auto;
			background: #fff;
			display: flex;
			width: 84%;
			justify-content: center;
			align-items: center;
			// 提交
			:deep(.el-button--success) {
				border: 0;
				cursor: pointer;
				border-radius: 20px;
				padding: 0 44px;
				margin: 0 10px 0 0;
				outline: none;
				color: #fff;
				background: linear-gradient(133deg, #9CC8EB 0%, #61B7FE 100%);
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 提交-悬浮
			:deep(.el-button--success:hover) {
				background: linear-gradient(266deg, #9CC8EB 0%, #61B7FE 100%);
			}
			// 下一题
			:deep(.el-button--warning) {
				border: 0;
				cursor: pointer;
				border-radius: 20px;
				padding: 0 44px;
				margin: 0 10px 0 0;
				outline: none;
				color: #fff;
				background: linear-gradient(133deg, #9CC8EB 0%, #61B7FE 100%);
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 下一题-悬浮
			:deep(.el-button--warning:hover) {
				background: linear-gradient(266deg, #9CC8EB 0%, #61B7FE 100%);
			}
			// 查看解析
			:deep(.el-button--primary) {
				border: 0;
				cursor: pointer;
				border-radius: 20px;
				padding: 0 34px;
				margin: 0 10px 0 0;
				outline: none;
				color: #fff;
				background: linear-gradient(133deg, #9CC8EB 0%, #61B7FE 100%);
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 查看解析-悬浮
			:deep(.el-button--primary:hover) {
				background: linear-gradient(266deg, #9CC8EB 0%, #61B7FE 100%);
			}
			// 结束考试
			:deep(.el-button--danger) {
				border: 0;
				cursor: pointer;
				border-radius: 20px;
				padding: 0 44px;
				margin: 0 10px 0 0;
				outline: none;
				color: #fff;
				background: linear-gradient(133deg, #9CC8EB 0%, #61B7FE 100%);
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 结束考试-悬浮
			:deep(.el-button--danger:hover) {
				background: linear-gradient(266deg, #9CC8EB 0%, #61B7FE 100%);
			}
		}
	}
	// 成绩盒子
	.score_view {
		border: none;
		margin: 10px auto;
		color: #2C2C2C;
		width: 50%;
		text-align: center;
		.score_item {
			padding: 40px 0;
		}
		.score_num {
			color: #61B7FE;
			font-size: 40px;
		}
	}
</style>