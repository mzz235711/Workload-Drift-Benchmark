/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<152 AND p.CommentCount>9 AND p.CommentCount<32 AND u.DownVotes>433 AND u.DownVotes<1316 AND v.CreationDate>'2011-06-02 13:21:21'::timestamp AND v.CreationDate<'2013-07-29 07:48:16'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2011-07-20 21:00:40'::timestamp AND b.Date<'2014-04-04 03:40:36'::timestamp;

