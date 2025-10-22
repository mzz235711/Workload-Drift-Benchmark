/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>49 AND p.Score<78 AND p.CommentCount>7 AND p.CommentCount<37 AND u.DownVotes>61 AND u.DownVotes<1605 AND v.CreationDate>'2009-12-31 04:37:04'::timestamp AND v.CreationDate<'2014-06-02 08:21:59'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2014-05-20 01:54:35'::timestamp AND b.Date<'2014-08-07 17:41:59'::timestamp;

