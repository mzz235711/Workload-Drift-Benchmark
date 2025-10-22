/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<69 AND p.CommentCount>13 AND p.CommentCount<30 AND u.DownVotes>47 AND u.DownVotes<328 AND v.CreationDate>'2012-01-11 09:11:09'::timestamp AND v.CreationDate<'2014-08-09 23:23:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2010-09-15 23:41:17'::timestamp AND b.Date<'2011-09-20 04:21:38'::timestamp;

