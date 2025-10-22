/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<168 AND p.CommentCount>5 AND p.CommentCount<36 AND u.DownVotes>686 AND u.DownVotes<1346 AND v.CreationDate>'2010-02-02 02:00:35'::timestamp AND v.CreationDate<'2013-12-17 21:33:01'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2011-12-04 11:12:52'::timestamp AND b.Date<'2012-01-21 21:49:56'::timestamp;

