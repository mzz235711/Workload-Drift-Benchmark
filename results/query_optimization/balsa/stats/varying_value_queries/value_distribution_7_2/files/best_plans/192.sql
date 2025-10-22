/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>27 AND p.Score<125 AND p.CommentCount>16 AND p.CommentCount<41 AND u.DownVotes>42 AND u.DownVotes<781 AND v.CreationDate>'2010-09-07 21:06:02'::timestamp AND v.CreationDate<'2012-02-04 14:14:31'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2012-06-29 12:55:18'::timestamp AND b.Date<'2013-06-12 03:41:26'::timestamp;

