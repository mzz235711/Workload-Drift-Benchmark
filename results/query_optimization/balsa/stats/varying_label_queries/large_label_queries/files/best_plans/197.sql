/*+ HashJoin(ph pl p b u v)
 MergeJoin(pl p b u v)
 HashJoin(p b u v)
 MergeJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(b)
 IndexScan(u)
 IndexScan(v)
 Leading((ph (pl (p (b (u v)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score>=-1 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND pl.LinkTypeId=1 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=2;

