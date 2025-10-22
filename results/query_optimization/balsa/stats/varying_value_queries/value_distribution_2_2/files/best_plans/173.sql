/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<136 AND p.CommentCount>5 AND p.CommentCount<41 AND u.DownVotes>163 AND u.DownVotes<1035 AND v.CreationDate>'2009-12-03 00:36:36'::timestamp AND v.CreationDate<'2010-10-26 04:01:19'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2011-10-04 14:18:48'::timestamp AND b.Date<'2012-01-18 12:33:58'::timestamp;

