/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<99 AND p.CommentCount>9 AND p.CommentCount<39 AND u.DownVotes>318 AND u.DownVotes<722 AND v.CreationDate>'2009-06-01 02:52:56'::timestamp AND v.CreationDate<'2013-10-15 13:09:18'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2011-02-21 09:07:47'::timestamp AND b.Date<'2013-10-20 23:38:11'::timestamp;

