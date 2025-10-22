/*+ HashJoin(u v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate<='2014-08-21 13:26:05'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=20706 AND p.AnswerCount=0 AND v.CreationDate>='2010-07-29 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation<=391 AND u.Views>=0 AND u.CreationDate<='2014-09-02 20:07:19'::timestamp;

