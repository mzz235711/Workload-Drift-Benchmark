/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>73 AND p.Score<124 AND p.CommentCount>0 AND p.CommentCount<32 AND u.DownVotes>47 AND u.DownVotes<1231 AND v.CreationDate>'2010-11-27 07:15:55'::timestamp AND v.CreationDate<'2011-06-17 10:12:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-08-23 21:26:46'::timestamp AND b.Date<'2013-11-04 08:59:33'::timestamp;

