/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<110 AND p.CommentCount>0 AND p.CommentCount<35 AND u.DownVotes>43 AND u.DownVotes<184 AND v.CreationDate>'2010-09-02 00:05:30'::timestamp AND v.CreationDate<'2014-01-11 08:23:39'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2012-05-10 06:55:29'::timestamp AND b.Date<'2012-05-31 05:48:04'::timestamp;

