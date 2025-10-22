/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<89 AND p.CommentCount>20 AND p.CommentCount<42 AND u.DownVotes>132 AND u.DownVotes<1215 AND v.CreationDate>'2009-11-23 22:41:15'::timestamp AND v.CreationDate<'2014-07-31 00:11:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-12-06 06:49:50'::timestamp AND b.Date<'2013-06-15 10:00:57'::timestamp;

