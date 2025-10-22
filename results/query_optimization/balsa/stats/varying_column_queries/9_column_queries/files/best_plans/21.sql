/*+ HashJoin(v u p pl b ph)
 HashJoin(v u p pl b)
 HashJoin(v u p pl)
 HashJoin(v u p)
 HashJoin(v u)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(b)
 SeqScan(ph)
 Leading((((((v u) p) pl) b) ph)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score>=-1 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND pl.CreationDate<='2014-08-22 20:04:25'::timestamp AND v.CreationDate<='2014-09-04 00:00:00'::timestamp AND b.Date<='2014-09-02 21:33:28'::timestamp AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

