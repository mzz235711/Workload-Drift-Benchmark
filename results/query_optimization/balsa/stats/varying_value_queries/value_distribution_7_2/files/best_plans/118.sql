/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<99 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>0 AND u.DownVotes<682 AND v.CreationDate>'2013-01-01 22:51:54'::timestamp AND v.CreationDate<'2013-04-25 10:13:43'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<15 AND b.Date>'2012-01-06 01:02:05'::timestamp AND b.Date<'2012-12-13 08:09:46'::timestamp;

