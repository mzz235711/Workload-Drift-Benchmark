/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<31 AND p.CommentCount>4 AND p.CommentCount<12 AND u.DownVotes>34 AND u.DownVotes<1796 AND v.CreationDate>'2013-02-13 22:57:44'::timestamp AND v.CreationDate<'2013-10-17 06:06:54'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2010-09-14 13:41:03'::timestamp AND b.Date<'2014-02-21 21:44:14'::timestamp;

