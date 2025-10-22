/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<154 AND p.CommentCount>10 AND p.CommentCount<34 AND u.DownVotes>71 AND u.DownVotes<1323 AND v.CreationDate>'2012-01-21 09:03:50'::timestamp AND v.CreationDate<'2013-09-11 19:27:16'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2011-01-15 12:20:47'::timestamp AND b.Date<'2014-08-03 16:25:36'::timestamp;

