/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<72 AND p.CommentCount>5 AND p.CommentCount<43 AND u.DownVotes>188 AND u.DownVotes<1004 AND v.CreationDate>'2009-03-03 01:47:09'::timestamp AND v.CreationDate<'2013-08-15 04:01:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-07-20 03:19:18'::timestamp AND b.Date<'2014-06-17 23:31:25'::timestamp;

