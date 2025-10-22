/*+ NestLoop(p v u b)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((((p v) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<99 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>347 AND u.DownVotes<1603 AND v.CreationDate>'2011-03-08 02:20:56'::timestamp AND v.CreationDate<'2012-12-17 01:37:22'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2010-09-01 19:29:59'::timestamp AND b.Date<'2014-08-08 04:17:02'::timestamp;

