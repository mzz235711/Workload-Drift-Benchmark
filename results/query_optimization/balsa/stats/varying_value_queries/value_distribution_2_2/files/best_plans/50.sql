/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<88 AND p.CommentCount>3 AND p.CommentCount<28 AND u.DownVotes>266 AND u.DownVotes<507 AND v.CreationDate>'2009-03-05 17:47:13'::timestamp AND v.CreationDate<'2011-07-09 19:12:09'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2010-09-25 23:41:52'::timestamp AND b.Date<'2011-05-31 12:13:44'::timestamp;

