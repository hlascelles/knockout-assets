# frozen_string_literal: true

require "spec_helper"

describe KnockoutAssets, type: :request do
  describe "#show" do
    it "returns the knockout assets" do
      get "/knockout-assets"
      result = response.body
      expect(result).to eq(<<~STR)
       <script type="text/javascript">
           var knockout_assets = {};

           knockout_assets['ccta_logo2.png'] = '/assets/ccta_logo2-aab6037854ecc753e233d14cb862721ebe2cfb6fcdf5061f19c61d75f7618fc6.png';
           knockout_assets['cifas_logo.png'] = '/assets/cifas_logo-f63aeee7ca3531c33746ef28581f69d177b337823e59ca46cb6a9655ef8772e7.png';
           knockout_assets['paypoint-logo.png'] = '/assets/paypoint-logo-0b14eefd4fee7289e11fa9a935b7cac162111577d8158192b157c00e0f9bc882.png';
           knockout_assets['positive-ssl.png'] = '/assets/positive-ssl-927f00f9916794da35a191ca6b23a46d19c6ea4a2b8a46644705de46654596e5.png';
           knockout_assets['wp-logo.png'] = '/assets/wp-logo-5a322035ac8a7d15b65a6a53600fb774977b62008ab5544ecbd650c91120ba57.png';
           knockout_assets['tel-icon.png'] = '/assets/tel-icon-c8756e0413938fd270cf8c61463c6440e392876b753d4f38c0fd5e764fc8a6ad.png';
           knockout_assets['ssl-logo.png'] = '/assets/ssl-logo-e004c2aaaee7c30f03e2c0441cff3a5e640e2945550d636ccdd47caabf60e420.png';

           ko.bindingHandlers.img = {
               init: function (element, valueAccessor) {
                   var str = ko.utils.unwrapObservable(valueAccessor());
                   $(element).attr('src', knockout_assets[str]);
               }
           };
       </script>
       
               <img src="/assets/ccta_logo2-aab6037854ecc753e233d14cb862721ebe2cfb6fcdf5061f19c61d75f7618fc6.png" alt="ccta_logo2.png" style="display: none;"/>
               <img src="/assets/cifas_logo-f63aeee7ca3531c33746ef28581f69d177b337823e59ca46cb6a9655ef8772e7.png" alt="cifas_logo.png" style="display: none;"/>
               <img src="/assets/paypoint-logo-0b14eefd4fee7289e11fa9a935b7cac162111577d8158192b157c00e0f9bc882.png" alt="paypoint-logo.png" style="display: none;"/>
               <img src="/assets/positive-ssl-927f00f9916794da35a191ca6b23a46d19c6ea4a2b8a46644705de46654596e5.png" alt="positive-ssl.png" style="display: none;"/>
               <img src="/assets/wp-logo-5a322035ac8a7d15b65a6a53600fb774977b62008ab5544ecbd650c91120ba57.png" alt="wp-logo.png" style="display: none;"/>
               <img src="/assets/tel-icon-c8756e0413938fd270cf8c61463c6440e392876b753d4f38c0fd5e764fc8a6ad.png" alt="tel-icon.png" style="display: none;"/>
               <img src="/assets/ssl-logo-e004c2aaaee7c30f03e2c0441cff3a5e640e2945550d636ccdd47caabf60e420.png" alt="ssl-logo.png" style="display: none;"/>

      STR
    end

    it "is memoized" do
      expect(::Rails.application.config.assets).to receive(:paths).once.and_call_original
      get "/knockout-assets"
    end
  end
end
