/*+ NestLoop(p u v b)
 NestLoop(p u v)
 NestLoop(p u)
 SeqScan(p)
 IndexScan(u)
 IndexScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<49 AND p.CommentCount>19 AND p.CommentCount<33 AND u.DownVotes>2 AND u.DownVotes<954 AND v.CreationDate>'2012-11-30 22:33:09'::timestamp AND v.CreationDate<'2013-05-28 16:44:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2011-04-15 14:46:29'::timestamp AND b.Date<'2012-10-01 02:47:29'::timestamp;

