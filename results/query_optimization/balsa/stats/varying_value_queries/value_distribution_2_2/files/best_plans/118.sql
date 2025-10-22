/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>58 AND p.Score<141 AND p.CommentCount>3 AND p.CommentCount<37 AND u.DownVotes>56 AND u.DownVotes<1071 AND v.CreationDate>'2011-05-14 18:22:43'::timestamp AND v.CreationDate<'2013-08-09 13:32:40'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2011-09-23 15:49:54'::timestamp AND b.Date<'2014-04-03 15:44:14'::timestamp;

