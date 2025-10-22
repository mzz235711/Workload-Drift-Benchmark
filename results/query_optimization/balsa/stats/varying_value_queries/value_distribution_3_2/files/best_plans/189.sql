/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>88 AND p.Score<123 AND p.CommentCount>13 AND p.CommentCount<35 AND u.DownVotes>45 AND u.DownVotes<1504 AND v.CreationDate>'2011-12-21 04:15:18'::timestamp AND v.CreationDate<'2014-02-28 06:11:08'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2012-03-26 04:39:04'::timestamp AND b.Date<'2013-04-25 19:15:53'::timestamp;

