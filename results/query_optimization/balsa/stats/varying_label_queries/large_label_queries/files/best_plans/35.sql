/*+ HashJoin(ph v u p pl b)
 HashJoin(ph v u p pl)
 HashJoin(v u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 IndexScan(pl)
 SeqScan(b)
 Leading(((ph (v (u (p pl)))) b)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score<=19 AND p.ViewCount<=4607 AND p.AnswerCount<=4 AND p.FavoriteCount=0 AND ph.PostHistoryTypeId=2 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation<=6764 AND u.Views>=0;

