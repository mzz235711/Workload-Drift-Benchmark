/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<41 AND p.CommentCount>21 AND p.CommentCount<39 AND u.DownVotes>78 AND u.DownVotes<633 AND v.CreationDate>'2009-06-10 05:23:17'::timestamp AND v.CreationDate<'2012-07-07 06:47:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-03-13 03:05:51'::timestamp AND b.Date<'2012-06-26 10:03:13'::timestamp;

