/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<179 AND p.CommentCount>8 AND p.CommentCount<30 AND u.DownVotes>6 AND u.DownVotes<1862 AND v.CreationDate>'2010-10-04 14:56:24'::timestamp AND v.CreationDate<'2014-05-17 16:37:02'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2011-01-17 10:34:29'::timestamp AND b.Date<'2013-09-18 20:02:01'::timestamp;

