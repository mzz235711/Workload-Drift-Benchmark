/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<77 AND p.CommentCount>10 AND p.CommentCount<20 AND u.DownVotes>176 AND u.DownVotes<793 AND v.CreationDate>'2010-06-21 12:18:30'::timestamp AND v.CreationDate<'2014-05-26 22:34:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-11-12 20:23:53'::timestamp AND b.Date<'2014-05-31 16:24:21'::timestamp;

