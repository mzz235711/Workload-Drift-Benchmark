/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<73 AND p.CommentCount>15 AND p.CommentCount<41 AND u.DownVotes>87 AND u.DownVotes<1297 AND v.CreationDate>'2010-11-06 16:45:40'::timestamp AND v.CreationDate<'2011-07-29 13:43:23'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2010-09-28 03:13:43'::timestamp AND b.Date<'2014-03-28 17:20:03'::timestamp;

