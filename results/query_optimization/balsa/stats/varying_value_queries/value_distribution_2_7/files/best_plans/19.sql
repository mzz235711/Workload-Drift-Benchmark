/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<114 AND p.CommentCount>11 AND p.CommentCount<38 AND u.DownVotes>181 AND u.DownVotes<1545 AND v.CreationDate>'2011-03-03 21:27:24'::timestamp AND v.CreationDate<'2014-09-04 14:23:56'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2010-08-01 08:07:33'::timestamp AND b.Date<'2012-08-01 17:09:38'::timestamp;

