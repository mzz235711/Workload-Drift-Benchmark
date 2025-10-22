/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<69 AND p.CommentCount>5 AND p.CommentCount<7 AND u.DownVotes>27 AND u.DownVotes<1200 AND v.CreationDate>'2012-06-07 14:00:26'::timestamp AND v.CreationDate<'2013-10-15 09:31:57'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-06-13 02:58:02'::timestamp AND b.Date<'2013-10-22 19:18:00'::timestamp;

