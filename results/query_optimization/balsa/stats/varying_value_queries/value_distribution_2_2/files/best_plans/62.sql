/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<99 AND p.CommentCount>4 AND p.CommentCount<9 AND u.DownVotes>245 AND u.DownVotes<491 AND v.CreationDate>'2011-05-18 04:40:26'::timestamp AND v.CreationDate<'2014-03-18 12:02:40'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2011-10-02 02:27:58'::timestamp AND b.Date<'2014-05-01 15:24:12'::timestamp;

