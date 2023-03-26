import FacebookIcon from '@mui/icons-material/Facebook';
import YouTubeIcon from '@mui/icons-material/YouTube';
import InstagramIcon from '@mui/icons-material/Instagram';

const Footer = () => {

    return(
        <div className="bg-slate-700 text-center text-white mt-20">
            <p className="pt-5">Connect With Us:</p>
            <div className="flex justify-center pt-2 pb-5">
                <div className="px-3" ><a href="https://www.facebook.com/zozohubtraders"><FacebookIcon  fontSize="large" /></a></div>
                <div className="px-3"><a href="https://www.youtube.com/zozohub"><YouTubeIcon  fontSize="large" /></a></div>
                <div className="px-3"><a href="https://www.instagram.com/zozohubtraders/"><InstagramIcon  fontSize="large" /></a></div>
            </div>
            <p className="pb-10">Copyright © 2021 ZOZOHUB. All rights reserved.</p>
        </div>
    );
};

export default Footer;