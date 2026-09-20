const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '公告信息',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'公告信息',
							url:'/index/newsList'
						},
					]
				},
				{
					name: '在线考试',
					icon: 'icon-common42',
					child:[
						{
							name:'试卷列表',
							url:'/index/exampaperList'
						},
					]
				},
				{
					name: '学习课程管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'学习资源',
							url:'/index/xuexiziyuanList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "员工岗前培训学习平台"
        } 
    }
}
export default config
