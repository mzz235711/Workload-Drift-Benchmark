/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<190 AND p.CommentCount>18 AND p.CommentCount<43 AND u.DownVotes>69 AND u.DownVotes<1739 AND v.CreationDate>'2011-09-16 10:02:19'::timestamp AND v.CreationDate<'2013-12-22 06:02:29'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2010-12-04 22:29:52'::timestamp AND b.Date<'2014-07-21 09:43:38'::timestamp;

