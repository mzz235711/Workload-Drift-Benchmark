/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<99 AND p.CommentCount>9 AND p.CommentCount<29 AND u.DownVotes>593 AND u.DownVotes<1462 AND v.CreationDate>'2010-01-01 06:13:34'::timestamp AND v.CreationDate<'2011-12-29 04:02:25'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2011-07-14 10:22:15'::timestamp AND b.Date<'2014-03-31 00:22:16'::timestamp;

