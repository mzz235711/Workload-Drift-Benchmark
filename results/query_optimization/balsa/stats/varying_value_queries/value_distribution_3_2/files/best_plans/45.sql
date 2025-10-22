/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<122 AND p.CommentCount>19 AND p.CommentCount<25 AND u.DownVotes>685 AND u.DownVotes<1365 AND v.CreationDate>'2011-04-10 05:29:49'::timestamp AND v.CreationDate<'2012-02-21 19:02:26'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2010-10-12 04:53:03'::timestamp AND b.Date<'2014-01-04 10:33:00'::timestamp;

