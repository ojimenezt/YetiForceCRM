{*<!-- {[The file is published on the basis of YetiForce Public License 3.0 that can be found in the following directory: licenses/LicenseEN.txt or yetiforce.com]} -->*}
{strip}
	<!-- tpl-Settings-Base-Index -->
	{if $WARNINGS}
		{include file=\App\Layout::getTemplatePath('DashBoard/SystemWarningAletrs.tpl', $QUALIFIED_MODULE)}
	{/if}
	<div class="o-settings-dashboard js-dashboard-container pt-2 h-100" data-js="container">
		<div class="container-fluid h-100 px-0">
			<div class="c-panel c-panel--collapsible c-panel--white">
				<div class="c-panel__header collapsed" id="marketplace" data-toggle="collapse" data-target="#marketplace-collapse" aria-expanded="false" aria-controls="marketplace-collapse">
					<span class="mdi mdi-chevron-up mx-2 u-font-size-26" alt="{\App\Language::translate('LBL_EXPAND_BLOCK')}"></span>
					<span class="mdi mdi-chevron-down mx-2 u-font-size-26" alt="{\App\Language::translate('LBL_COLLAPSE_BLOCK')}"></span>
					<input type="text" class="js-shop-search form-control form-control-sm u-max-w-250px ml-2" aria-label="{\App\Language::translate('LBL_SEARCH_PLACEHOLDER', $QUALIFIED_MODULE)}" placeholder="{\App\Language::translate('LBL_SEARCH_PLACEHOLDER', $QUALIFIED_MODULE)}">
					<div class="c-panel__title">
						<span class="yfi yfi-marketplace"></span>
						<h5>
							<a class="text-decoration-none text-black" href="index.php?module=YetiForce&parent=Settings&view=Shop">
								{\App\Language::translate('LBL_SHOP_MARKETPLACE', $QUALIFIED_MODULE)}
							</a>
						</h5>
					</div>
				</div>
				<div id="marketplace-collapse" class="js-collapse collapse multi-collapse" aria-labelledby="marketplace">
					<div class="c-panel__body pl-3 js-products-container">
						<nav>
							<div class="o-shop__nav nav nav-under mt-3" role="tablist">
								<a class="o-shop__nav__item nav-item nav-link active" id="nav-premium-tab" data-toggle="tab" href="#nav-premium" role="tab" aria-controls="nav-premium" aria-selected="true">
									<span class="yfi yfi-for-admin"></span>
									{\App\Language::translate('LBL_PREMIUM_ZONE', $QUALIFIED_MODULE)}
								</a>
								<a class="o-shop__nav__item nav-item nav-link" id="nav-partner-tab" data-toggle="tab" href="#nav-partner" role="tab" aria-controls="nav-partner" aria-selected="false" data-js="data">
									<span class="yfi yfi-for-partners"></span>
									{\App\Language::translate('LBL_PARTNER_ZONE', $QUALIFIED_MODULE)}
								</a>
							</div>
						</nav>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="nav-premium" role="tabpanel" aria-labelledby="nav-premium-tab">
								{include file=\App\Layout::getTemplatePath('DashBoard/PremiumZone.tpl', $QUALIFIED_MODULE)}
							</div>
							<div class="tab-pane fade js-department" data-department="Partner" id="nav-partner" role="tabpanel" aria-labelledby="nav-partner-tab">
								{include file=\App\Layout::getTemplatePath('DashBoard/PartnerZone.tpl', $QUALIFIED_MODULE)}
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="c-panel c-panel--collapsible c-panel--white">
				<div class="c-panel__header collapsed" id="system-monitoring" data-toggle="collapse" data-target="#system-monitoring-collapse" aria-expanded="false" aria-controls="system-monitoring-collapse">
					<span class="mdi mdi-chevron-up mx-2 u-font-size-26" alt="{\App\Language::translate('LBL_EXPAND_BLOCK')}"></span>
					<span class="mdi mdi-chevron-down mx-2 u-font-size-26" alt="{\App\Language::translate('LBL_COLLAPSE_BLOCK')}"></span>
					<div class="c-panel__title">
						<span class="yfi yfi-system-monitoring"></span>
						<h5>
							{\App\Language::translate('LBL_SYSTEM_MONITORING', $QUALIFIED_MODULE)}
						</h5>
					</div>
				</div>
				<div id="system-monitoring-collapse" class="js-collapse collapse multi-collapse" aria-labelledby="system-monitoring">
					<div class="c-panel__body pl-3 pr-0">
								{include file=\App\Layout::getTemplatePath('DashBoard/SystemMonitoring.tpl', $QUALIFIED_MODULE)}
					</div>
				</div>
			</div>
			<div class="c-panel c-panel--collapsible c-panel--white">
				<div class="c-panel__header collapsed" id="my-shortcuts" data-toggle="collapse" data-target="#my-shortcuts-collapse" aria-expanded="false" aria-controls="my-shortcuts-collapse">
					<span class="mdi mdi-chevron-up mx-2 u-font-size-26" alt="{\App\Language::translate('LBL_EXPAND_BLOCK')}"></span>
					<span class="mdi mdi-chevron-down mx-2 u-font-size-26" alt="{\App\Language::translate('LBL_COLLAPSE_BLOCK')}"></span>
					<div class="c-panel__title">
						<span class="yfi yfi-my-shortcuts"></span>
						<h5>
							{\App\Language::translate('LBL_SETTINGS_SHORT_CUT', $QUALIFIED_MODULE)}
						</h5>
					</div>
				</div>
				<div id="my-shortcuts-collapse" class="js-collapse collapse multi-collapse" aria-labelledby="my-shortcuts">
					<div class="c-panel__body px-3">
						{include file=\App\Layout::getTemplatePath('DashBoard/SettingsShortCutsContainer.tpl', $QUALIFIED_MODULE)}
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /tpl-Settings-Base-Index -->
{/strip}
