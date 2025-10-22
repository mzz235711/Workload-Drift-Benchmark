/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<155 AND p.CommentCount>8 AND p.CommentCount<18 AND u.DownVotes>8 AND u.DownVotes<830 AND v.CreationDate>'2009-09-02 12:44:39'::timestamp AND v.CreationDate<'2014-03-26 22:46:01'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2011-07-28 10:32:25'::timestamp AND b.Date<'2014-06-19 09:04:24'::timestamp;

