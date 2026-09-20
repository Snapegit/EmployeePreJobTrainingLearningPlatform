	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import yuangong from '@/views/yuangong/list'
	import zhidaozixun from '@/views/zhidaozixun/list'
	import examquestion from '@/views/exam/examquestion/list'
	import jihuadianping from '@/views/jihuadianping/list'
	import exampaper from '@/views/exampaper/list'
	import storeup from '@/views/storeup/list'
	import daoshi from '@/views/daoshi/list'
	import discussxuexiziyuan from '@/views/discussxuexiziyuan/list'
	import jihuajindu from '@/views/jihuajindu/list'
	import kechengfenlei from '@/views/kechengfenlei/list'
	import xuexijihua from '@/views/xuexijihua/list'
	import xuexixinxi from '@/views/xuexixinxi/list'
	import config from '@/views/config/list'
	import xuexiziyuan from '@/views/xuexiziyuan/list'
	import exampaperlist from '@/views/exam/exampaperlist/list'
	import examination from '@/views/exam/exampaperlist/examination'
	import examrecord from '@/views/exam/examrecord/list'
	import examfailrecord from '@/views/exam/examfailrecord/list'
	import daoshiCenter from '@/views/daoshi/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/daoshiCenter',
			name: '导师个人中心',
			component: daoshiCenter
		}
		,{
			path: '/news',
			name: '公告信息',
			component: news
		}
		,{
			path: '/yuangong',
			name: '员工',
			component: yuangong
		}
		,{
			path: '/zhidaozixun',
			name: '指导咨询',
			component: zhidaozixun
		}
		,{
			path: '/examquestion',
			name: '试题管理',
			component: examquestion
		}
		,{
			path: '/jihuadianping',
			name: '计划点评',
			component: jihuadianping
		}
		,{
			path: '/exampaper',
			name: '在线考试',
			component: exampaper
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/daoshi',
			name: '导师',
			component: daoshi
		}
		,{
			path: '/discussxuexiziyuan',
			name: '学习资源评论',
			component: discussxuexiziyuan
		}
		,{
			path: '/jihuajindu',
			name: '计划进度',
			component: jihuajindu
		}
		,{
			path: '/kechengfenlei',
			name: '课程分类',
			component: kechengfenlei
		}
		,{
			path: '/xuexijihua',
			name: '学习计划',
			component: xuexijihua
		}
		,{
			path: '/xuexixinxi',
			name: '学习信息',
			component: xuexixinxi
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/xuexiziyuan',
			name: '学习资源',
			component: xuexiziyuan
		}
		, {
			path: '/exampaperlist',
			name: '考试列表',
			component: exampaperlist
		}, {
			path: '/examrecord',
			name: '考试记录',
			component: examrecord
		}, {
			path: '/examfailrecord',
			name: '错题本',
			component: examfailrecord
		}
		]
	},
	{
		path: '/examination',
		name: '考试',
		component: examination
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
