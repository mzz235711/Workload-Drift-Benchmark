/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>56 AND p.Score<149 AND p.CommentCount>2 AND p.CommentCount<6 AND u.DownVotes>719 AND u.DownVotes<1617 AND v.CreationDate>'2010-05-06 18:16:05'::timestamp AND v.CreationDate<'2013-11-19 15:43:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-11-28 17:13:19'::timestamp AND b.Date<'2013-10-05 17:00:31'::timestamp;

