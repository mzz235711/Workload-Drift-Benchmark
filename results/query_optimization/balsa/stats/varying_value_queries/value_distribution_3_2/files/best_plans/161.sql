/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<129 AND p.CommentCount>3 AND p.CommentCount<8 AND u.DownVotes>384 AND u.DownVotes<1140 AND v.CreationDate>'2010-08-17 20:02:29'::timestamp AND v.CreationDate<'2012-09-28 05:28:08'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-11-04 01:38:49'::timestamp AND b.Date<'2013-05-04 05:01:50'::timestamp;

