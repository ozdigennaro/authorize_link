require 'spec_helper'

describe AuthorizeLink do
  context 'authorized' do
    it 'returns link' do
      path = "thispath"
      def params
        {}
      end
      def authorized_action?(controller,action)
        true
      end
      class String
        def html_safe
          self
        end
      end
      puts authorize_link("controller", "action", path)
      expect(authorize_link("controller", "action", path)).to include("thispath")
    end
  end

  context 'unauthorized' do
    it 'empty' do
      path = "thispath"
      def params
        {}
      end
      def authorized_action?(controller,action)
        false
      end
      class String
        def html_safe
          self
        end
      end
      expect(authorize_link("controller", "action", path)).to eql ""
    end
  end
end
