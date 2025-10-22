/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<123 AND p.CommentCount>7 AND p.CommentCount<26 AND u.DownVotes>689 AND u.DownVotes<1073 AND v.CreationDate>'2010-10-17 03:10:18'::timestamp AND v.CreationDate<'2012-09-23 21:27:53'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2012-07-30 05:21:52'::timestamp AND b.Date<'2013-01-07 16:00:46'::timestamp;

