/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<173 AND p.CommentCount>0 AND p.CommentCount<36 AND u.DownVotes>286 AND u.DownVotes<922 AND v.CreationDate>'2013-11-01 01:06:21'::timestamp AND v.CreationDate<'2014-05-04 06:43:10'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2012-01-02 09:55:05'::timestamp AND b.Date<'2013-11-09 14:51:50'::timestamp;

