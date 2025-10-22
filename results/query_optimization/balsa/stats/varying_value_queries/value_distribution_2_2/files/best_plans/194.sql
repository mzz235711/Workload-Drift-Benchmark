/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<184 AND p.CommentCount>2 AND p.CommentCount<26 AND u.DownVotes>502 AND u.DownVotes<862 AND v.CreationDate>'2012-02-27 21:35:45'::timestamp AND v.CreationDate<'2012-08-04 22:24:38'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2010-08-16 22:10:16'::timestamp AND b.Date<'2014-07-03 10:25:09'::timestamp;

