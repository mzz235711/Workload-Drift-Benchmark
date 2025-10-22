/*+ HashJoin(b v u p)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>109 AND p.Score<152 AND p.CommentCount>8 AND p.CommentCount<20 AND u.DownVotes>487 AND u.DownVotes<886 AND v.CreationDate>'2012-03-17 23:12:48'::timestamp AND v.CreationDate<'2014-05-21 01:23:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-12-19 19:47:20'::timestamp AND b.Date<'2014-01-28 17:28:36'::timestamp;

