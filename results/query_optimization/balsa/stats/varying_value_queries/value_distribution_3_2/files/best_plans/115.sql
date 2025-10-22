/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<176 AND p.CommentCount>14 AND p.CommentCount<30 AND u.DownVotes>79 AND u.DownVotes<1050 AND v.CreationDate>'2011-02-24 01:13:03'::timestamp AND v.CreationDate<'2014-04-20 13:22:44'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2013-02-03 13:49:45'::timestamp AND b.Date<'2014-03-24 12:30:45'::timestamp;

