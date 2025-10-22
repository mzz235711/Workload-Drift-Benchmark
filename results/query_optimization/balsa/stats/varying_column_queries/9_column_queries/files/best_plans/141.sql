/*+ HashJoin(ph b u p c)
 MergeJoin(ph b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(c)
 Leading(((ph (b (u p))) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-11 02:42:11'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=7523 AND p.CommentCount=2 AND ph.CreationDate>='2010-07-20 18:17:25'::timestamp AND b.Date<='2014-08-19 13:12:03'::timestamp AND u.Views<=72 AND u.DownVotes<=0 AND u.UpVotes<=128;

