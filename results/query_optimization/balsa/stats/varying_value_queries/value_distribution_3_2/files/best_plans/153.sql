/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<163 AND p.CommentCount>7 AND p.CommentCount<10 AND u.DownVotes>91 AND u.DownVotes<900 AND v.CreationDate>'2009-06-29 17:58:46'::timestamp AND v.CreationDate<'2012-10-13 07:59:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-09-12 08:35:19'::timestamp AND b.Date<'2011-01-09 23:06:29'::timestamp;

