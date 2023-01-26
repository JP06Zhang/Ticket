package com.zjp.controller;

import com.zjp.service.PlayService;
import com.zjp.vo.PlayDetailVo;
import com.zjp.vo.PlayVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.annotation.Resource;
import java.util.List;

@Controller
public class PlayController {

    @Resource
    private PlayService playService;

    @RequestMapping("/play")
    public String getPlays(@RequestParam String filmId, Model model) {
        List<PlayVo> playVos = playService.findPlayById(filmId);
        model.addAttribute("playVos", playVos);
        return "play";
    }

    @RequestMapping("/seat")
    public String showSeats(@RequestParam String playId, Model model) {
        PlayDetailVo detailVo = playService.getDetailById(playId);
        model.addAttribute("detailVo", detailVo);
        return "seat";
    }
}