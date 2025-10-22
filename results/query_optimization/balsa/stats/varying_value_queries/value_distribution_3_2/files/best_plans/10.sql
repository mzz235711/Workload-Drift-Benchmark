/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>47 AND p.Score<148 AND p.CommentCount>3 AND p.CommentCount<37 AND u.DownVotes>232 AND u.DownVotes<1721 AND v.CreationDate>'2010-11-28 04:41:46'::timestamp AND v.CreationDate<'2013-07-04 02:42:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2010-07-29 11:22:00'::timestamp AND b.Date<'2010-12-23 02:32:48'::timestamp;

