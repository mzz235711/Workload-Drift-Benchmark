/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>40 AND p.Score<151 AND p.CommentCount>12 AND p.CommentCount<44 AND u.DownVotes>7 AND u.DownVotes<707 AND v.CreationDate>'2011-03-03 22:27:24'::timestamp AND v.CreationDate<'2014-08-17 03:19:21'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-09-03 23:32:29'::timestamp AND b.Date<'2012-12-29 16:09:20'::timestamp;

