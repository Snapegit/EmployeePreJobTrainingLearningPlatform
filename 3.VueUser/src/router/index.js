import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yuangongList from '@/views/pages/yuangong/list'
import yuangongDetail from '@/views/pages/yuangong/formModel'
import yuangongAdd from '@/views/pages/yuangong/formAdd'
import yuangongCenter from '@/views/pages/yuangong/center'
import kechengfenleiList from '@/views/pages/kechengfenlei/list'
import kechengfenleiDetail from '@/views/pages/kechengfenlei/formModel'
import kechengfenleiAdd from '@/views/pages/kechengfenlei/formAdd'
import xuexiziyuanList from '@/views/pages/xuexiziyuan/list'
import xuexiziyuanDetail from '@/views/pages/xuexiziyuan/formModel'
import xuexiziyuanAdd from '@/views/pages/xuexiziyuan/formAdd'
import storeupList from '@/views/pages/storeup/list'
import newsList from '@/views/pages/news/list'
import daoshiList from '@/views/pages/daoshi/list'
import daoshiDetail from '@/views/pages/daoshi/formModel'
import daoshiAdd from '@/views/pages/daoshi/formAdd'
import xuexixinxiList from '@/views/pages/xuexixinxi/list'
import xuexixinxiDetail from '@/views/pages/xuexixinxi/formModel'
import xuexixinxiAdd from '@/views/pages/xuexixinxi/formAdd'
import xuexijihuaList from '@/views/pages/xuexijihua/list'
import xuexijihuaDetail from '@/views/pages/xuexijihua/formModel'
import xuexijihuaAdd from '@/views/pages/xuexijihua/formAdd'
import jihuajinduList from '@/views/pages/jihuajindu/list'
import jihuajinduDetail from '@/views/pages/jihuajindu/formModel'
import jihuajinduAdd from '@/views/pages/jihuajindu/formAdd'
import jihuadianpingList from '@/views/pages/jihuadianping/list'
import jihuadianpingDetail from '@/views/pages/jihuadianping/formModel'
import jihuadianpingAdd from '@/views/pages/jihuadianping/formAdd'
import zhidaozixunList from '@/views/pages/zhidaozixun/list'
import zhidaozixunDetail from '@/views/pages/zhidaozixun/formModel'
import zhidaozixunAdd from '@/views/pages/zhidaozixun/formAdd'
import exampaperList from '@/views/pages/exam/exampaperList'
import examination from '@/views/pages/exam/examination'
import examrecordList from '@/views/pages/exam/examrecordList'
import examfailrecord from '@/views/pages/exam/examfailrecord'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yuangongList',
			component: yuangongList
		}, {
			path: 'yuangongDetail',
			component: yuangongDetail
		}, {
			path: 'yuangongAdd',
			component: yuangongAdd
		}
		, {
			path: 'yuangongCenter',
			component: yuangongCenter
		}
		, {
			path: 'kechengfenleiList',
			component: kechengfenleiList
		}, {
			path: 'kechengfenleiDetail',
			component: kechengfenleiDetail
		}, {
			path: 'kechengfenleiAdd',
			component: kechengfenleiAdd
		}
		, {
			path: 'xuexiziyuanList',
			component: xuexiziyuanList
		}, {
			path: 'xuexiziyuanDetail',
			component: xuexiziyuanDetail
		}, {
			path: 'xuexiziyuanAdd',
			component: xuexiziyuanAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'daoshiList',
			component: daoshiList
		}, {
			path: 'daoshiDetail',
			component: daoshiDetail
		}, {
			path: 'daoshiAdd',
			component: daoshiAdd
		}
		, {
			path: 'xuexixinxiList',
			component: xuexixinxiList
		}, {
			path: 'xuexixinxiDetail',
			component: xuexixinxiDetail
		}, {
			path: 'xuexixinxiAdd',
			component: xuexixinxiAdd
		}
		, {
			path: 'xuexijihuaList',
			component: xuexijihuaList
		}, {
			path: 'xuexijihuaDetail',
			component: xuexijihuaDetail
		}, {
			path: 'xuexijihuaAdd',
			component: xuexijihuaAdd
		}
		, {
			path: 'jihuajinduList',
			component: jihuajinduList
		}, {
			path: 'jihuajinduDetail',
			component: jihuajinduDetail
		}, {
			path: 'jihuajinduAdd',
			component: jihuajinduAdd
		}
		, {
			path: 'jihuadianpingList',
			component: jihuadianpingList
		}, {
			path: 'jihuadianpingDetail',
			component: jihuadianpingDetail
		}, {
			path: 'jihuadianpingAdd',
			component: jihuadianpingAdd
		}
		, {
			path: 'zhidaozixunList',
			component: zhidaozixunList
		}, {
			path: 'zhidaozixunDetail',
			component: zhidaozixunDetail
		}, {
			path: 'zhidaozixunAdd',
			component: zhidaozixunAdd
		}
		, {
			path: 'exampaperList',
			component: exampaperList
		}, {
			path: 'examrecordList',
			component: examrecordList
		}, {
			path: 'examfailrecord',
			component: examfailrecord
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	, {
		path: '/examination',
		component: examination
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
