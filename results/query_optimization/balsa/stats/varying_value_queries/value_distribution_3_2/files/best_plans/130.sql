/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<165 AND p.CommentCount>4 AND p.CommentCount<24 AND u.DownVotes>583 AND u.DownVotes<1525 AND v.CreationDate>'2009-12-28 22:44:57'::timestamp AND v.CreationDate<'2013-11-07 22:58:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-02-26 14:31:03'::timestamp AND b.Date<'2011-03-14 11:22:43'::timestamp;

