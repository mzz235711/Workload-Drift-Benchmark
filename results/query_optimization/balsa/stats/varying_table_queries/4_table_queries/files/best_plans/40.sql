/*+ HashJoin(u pl p v)
 MergeJoin(pl p v)
 HashJoin(p v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((u (pl (p v)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=17534 AND p.AnswerCount>=0 AND p.AnswerCount<=2 AND p.CreationDate>='2010-07-26 20:17:17'::timestamp AND p.CreationDate<='2014-09-12 14:50:38'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.Reputation>=1 AND u.UpVotes>=0;

