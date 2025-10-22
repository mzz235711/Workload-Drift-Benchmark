/*+ HashJoin(ph pl b u v p)
 HashJoin(pl b u v p)
 MergeJoin(b u v p)
 HashJoin(b u v)
 NestLoop(u v)
 SeqScan(ph)
 SeqScan(pl)
 IndexScan(b)
 IndexScan(u)
 IndexScan(v)
 SeqScan(p)
 Leading((ph (pl ((b (u v)) p)))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score>=-3 AND p.ViewCount>=0 AND p.ViewCount<=143055 AND p.AnswerCount>=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2011-03-12 05:40:11'::timestamp AND ph.CreationDate<='2014-09-01 02:36:14'::timestamp AND v.BountyAmount>=0 AND u.Reputation<=3544 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.UpVotes>=0;

