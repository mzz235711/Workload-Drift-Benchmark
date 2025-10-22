/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<190 AND p.CommentCount>24 AND p.CommentCount<40 AND u.DownVotes>290 AND u.DownVotes<1192 AND v.CreationDate>'2009-09-28 20:45:30'::timestamp AND v.CreationDate<'2013-07-16 18:52:55'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2013-03-28 11:13:23'::timestamp AND b.Date<'2013-07-18 09:49:50'::timestamp;

