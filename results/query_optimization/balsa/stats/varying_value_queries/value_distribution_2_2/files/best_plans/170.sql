/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>40 AND p.Score<59 AND p.CommentCount>8 AND p.CommentCount<20 AND u.DownVotes>105 AND u.DownVotes<884 AND v.CreationDate>'2009-09-09 20:44:21'::timestamp AND v.CreationDate<'2014-07-17 11:28:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-08-18 22:40:46'::timestamp AND b.Date<'2011-03-14 20:38:40'::timestamp;

