/*+ HashJoin(v p b u)
 HashJoin(b u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(b)
 IndexScan(u)
 Leading(((v p) (b u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<116 AND p.CommentCount>13 AND p.CommentCount<17 AND u.DownVotes>559 AND u.DownVotes<1561 AND v.CreationDate>'2012-04-26 08:32:22'::timestamp AND v.CreationDate<'2012-05-22 02:39:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-08-18 01:46:07'::timestamp AND b.Date<'2014-08-29 17:23:38'::timestamp;

