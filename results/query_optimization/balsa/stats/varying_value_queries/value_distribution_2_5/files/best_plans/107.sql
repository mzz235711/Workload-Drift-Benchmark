/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<182 AND p.CommentCount>2 AND p.CommentCount<9 AND u.DownVotes>38 AND u.DownVotes<854 AND v.CreationDate>'2010-10-22 14:13:04'::timestamp AND v.CreationDate<'2011-08-06 07:01:18'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<13 AND b.Date>'2014-04-02 18:32:06'::timestamp AND b.Date<'2014-07-21 21:22:45'::timestamp;

