/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<106 AND p.CommentCount>16 AND p.CommentCount<42 AND u.DownVotes>196 AND u.DownVotes<661 AND v.CreationDate>'2009-03-11 23:24:16'::timestamp AND v.CreationDate<'2011-10-28 08:44:40'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2011-10-05 07:53:09'::timestamp AND b.Date<'2011-11-26 12:34:23'::timestamp;

